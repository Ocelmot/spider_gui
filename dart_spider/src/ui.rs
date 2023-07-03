use std::collections::HashMap;

use spider_client::message::{AbsoluteDatasetPath, DatasetData, UiElement, UiElementKind, UiPage, UiInput};

struct BuildContext<'a> {
    datasets: &'a HashMap<AbsoluteDatasetPath, Vec<DatasetData>>,
    dataset_indices: &'a Vec<usize>,
    datum: &'a Option<&'a DatasetData>,
}

impl<'a> BuildContext<'a> {
    pub fn with_datum(&self, new_datum: &'a Option<&'a DatasetData>)-> Self{
        Self{
            datasets: self.datasets,
            dataset_indices: self.dataset_indices,
            datum: new_datum,
        }
    }
    pub fn with_dataset_index(&self, new_indices: &'a Vec<usize>) -> Self {
        Self{
            datasets: self.datasets,
            dataset_indices: new_indices,
            datum: self.datum,
        }
    }
}

#[derive(Debug)]
pub struct DartUiPage {
    pub id: String,
    pub name: String,
    pub root: DartUiElement,
}

impl DartUiPage {
    pub fn build(page: &UiPage, datasets: &HashMap<AbsoluteDatasetPath, Vec<DatasetData>>) -> Self {
        let context = BuildContext {
            datasets,
            dataset_indices: &vec![],
            datum: &None,
        };
        Self {
            id: page.id().to_base64(),
            name: page.name().to_owned(),
            root: DartUiElement::build(page.root(), &context),
        }
    }
}

#[derive(Debug)]
pub struct DartUiElement {
    pub kind: DartUiElementKind,
    pub id: Option<String>,
    pub dataset_indices: Vec<u32>,
    pub text: String,
    pub children: Vec<DartUiElement>,
}

impl DartUiElement {
    fn build(element: &UiElement, context: &BuildContext) -> Self {
        let mut children = Vec::new();
        match element.dataset().as_ref().map(|p| {context.datasets.get(p)}).flatten() {
            Some(dataset) => {
                // build children for each element in the dataset
                for (index, datum) in dataset.iter().enumerate() {
                    let new_datum = &Some(datum);
                    let datum_context = context.with_datum(new_datum);
                    let  mut new_indices = context.dataset_indices.clone();
                    new_indices.push(index);
                    let index_context = datum_context.with_dataset_index(&new_indices);
                    for child in element.children() {
                        children.push(DartUiElement::build(child, &index_context));
                    }
                }
            }
            None => {
                // Build children
                children = element
                    .children()
                    .map(|e| DartUiElement::build(e, context))
                    .collect();
            }
        }

        // Build Element
        let dataset_indices = context.dataset_indices.clone();
        let dataset_indices = dataset_indices.iter().map(|x| *x as u32).collect();
        Self {
            kind: element.kind().clone().resolve(context.datum).into(),
            id: element.id().cloned(),
            dataset_indices,
            text: element.render_content_opt(context.datum),
            children,
        }
    }
}

#[derive(Debug)]
pub enum DartUiElementKind {
    None,
    Spacer,
    Columns,
    Rows,
    Text,
    TextEntry,
    Button,
}
impl From<UiElementKind> for DartUiElementKind {
    fn from(value: UiElementKind) -> Self {
        match value {
            UiElementKind::None => DartUiElementKind::None,
            UiElementKind::Spacer => DartUiElementKind::Spacer,
            UiElementKind::Columns => DartUiElementKind::Columns,
            UiElementKind::Rows => DartUiElementKind::Rows,
            UiElementKind::Grid(_, _) => DartUiElementKind::None,
            UiElementKind::Text => DartUiElementKind::Text,
            UiElementKind::TextEntry => DartUiElementKind::TextEntry,
            UiElementKind::Button => DartUiElementKind::Button,
            UiElementKind::Variable(_) => DartUiElementKind::None, // should convert this before using into
        }
    }
}

#[derive(Debug)]
pub enum DartUiInput{
    Click,
    Text(String),
}

impl Into<UiInput> for DartUiInput {
    fn into(self) -> UiInput {
        match self {
            DartUiInput::Click => UiInput::Click,
            DartUiInput::Text(s) => UiInput::Text(s),
        }
    }
}
