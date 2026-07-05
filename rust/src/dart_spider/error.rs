//! Contains all the error handling code for the Spider GuiClient crate.
//!
//! Defines [GuiClientResult] and [GuiClientError] to represent error conditions from GuiClient
//! operations. These can wrap other types of errors, have the type of the error
//! associated to it, and carry a message describing what went wrong.

use std::{error::Error, fmt::Display};

/// Defines an error returned from the Spider GuiClient crate
pub type GuiClientResult<T = ()> = Result<T, GuiClientError>;

/// Trait allows its implementors to be informed of a problem of type P.
#[allow(dead_code)]
pub trait Problem<T, P> {
    /// Set the type of problem for this GuiClientResult, wrapping if needed
    fn problem(self, kind: P) -> GuiClientResult<T>;
    /// Set the message for this GuiClientResult, wrapping if needed
    fn msg<S: Into<String>>(self, msg: S) -> GuiClientResult<T>;
    /// Set both the type and message for this GuiClient Result, wrapping if needed
    fn problem_msg<S: Into<String>>(self, kind: P, msg: S) -> GuiClientResult<T>;
}

impl<T, I: Into<GuiClientError>> Problem<T, ErrorKind> for Result<T, I> {
    fn problem(self, kind: ErrorKind) -> GuiClientResult<T> {
        match self {
            Ok(value) => Ok(value),
            Err(err) => {
                let err = err.into();
                Err(err.problem(kind))
            }
        }
    }

    fn msg<S: Into<String>>(self, msg: S) -> GuiClientResult<T> {
        match self {
            Ok(value) => Ok(value),
            Err(err) => {
                let err = err.into();
                Err(err.msg(msg.into()))
            }
        }
    }
    fn problem_msg<S: Into<String>>(self, kind: ErrorKind, msg: S) -> GuiClientResult<T> {
        match self {
            Ok(value) => Ok(value),
            Err(err) => {
                let err = err.into();
                Err(err.problem(kind).msg(msg))
            }
        }
    }
}

/// Trait to implement for objects that can be wrapped into a GuiClientResult
#[allow(dead_code)]
pub trait ProblemWrap<T> {
    /// Wrap self, returning a GuiClientResult
    fn wrap(self) -> GuiClientResult<T>;
    /// Wrap self, set the problem type, return GuiClientResult
    fn wrap_problem(self, kind: ErrorKind) -> GuiClientResult<T>;
    /// Wrap self, set the message, return GuiClientResult
    fn wrap_msg<S: Into<String>>(self, msg: S) -> GuiClientResult<T>;
    /// Wrap self, set the problem type and message, return GuiClientResult
    fn wrap_problem_msg<S: Into<String>>(self, kind: ErrorKind, msg: S) -> GuiClientResult<T>;
}

impl<T, E: Error + Send + Sync + 'static> ProblemWrap<T> for Result<T, E> {
    fn wrap(self) -> GuiClientResult<T> {
        self.map_err(|e| GuiClientError {
            kind: ErrorKind::Misc,
            msg: None,
            source: Some(Box::new(e)),
        })
    }

    fn wrap_problem(self, kind: ErrorKind) -> GuiClientResult<T> {
        self.wrap().problem(kind)
    }

    fn wrap_msg<S: Into<String>>(self, msg: S) -> GuiClientResult<T> {
        self.wrap().msg(msg)
    }

    fn wrap_problem_msg<S: Into<String>>(self, kind: ErrorKind, msg: S) -> GuiClientResult<T> {
        self.wrap().problem(kind).msg(msg)
    }
}

impl<T> ProblemWrap<T> for Option<T> {
    fn wrap(self) -> GuiClientResult<T> {
        self.ok_or_else(|| GuiClientError::new())
    }

    fn wrap_problem(self, kind: ErrorKind) -> GuiClientResult<T> {
        self.ok_or_else(|| GuiClientError::new().problem(kind))
    }

    fn wrap_msg<S: Into<String>>(self, msg: S) -> GuiClientResult<T> {
        self.ok_or_else(|| GuiClientError::new().msg(msg))
    }

    fn wrap_problem_msg<S: Into<String>>(self, kind: ErrorKind, msg: S) -> GuiClientResult<T> {
        self.ok_or_else(|| GuiClientError::new().problem(kind).msg(msg))
    }
}

/// Indicate the type of the [GuiClientError] encountered
#[derive(Debug, PartialEq, Eq)]
pub enum ErrorKind {
    
    /// The connection is closed
    Closed,

    /// Failed to read or write to the disk
    IO,

    /// Other problems
    Misc,
}

/// The error type for this crate. Used by [GuiClientResult].
#[derive(Debug)]
pub struct GuiClientError {
    kind: ErrorKind,
    msg: Option<String>,
    source: Option<Box<dyn Error + Send + Sync + 'static>>,
}

impl GuiClientError {
    /// Create a new, blank error. It is of kind [ErrorKind::Misc], with no
    /// message and no underlying source.
    pub fn new() -> Self {
        Self {
            kind: ErrorKind::Misc,
            msg: None,
            source: None,
        }
    }

    /// Indicate the [ErrorKind] of problem that occurred,
    /// if the GuiClientError already has a different ErrorKind set,
    /// this function will wrap that error.
    pub fn problem(mut self, kind: ErrorKind) -> Self {
        if self.kind == kind {
            return self;
        } else if self.kind == ErrorKind::Misc {
            self.kind = kind;
            return self;
        } else {
            return Self {
                kind,
                msg: None,
                source: Some(Box::new(self)),
            };
        }
    }

    /// Indicate the message for this GuiClientError, if the msg is already set, this
    /// function will wrap the error.
    pub fn msg<S: Into<String>>(mut self, msg: S) -> Self {
        if self.msg.is_none() {
            self.msg = Some(msg.into());
            self
        } else {
            Self {
                kind: ErrorKind::Misc,
                msg: Some(msg.into()),
                source: Some(Box::new(self)),
            }
        }
    }
}

impl From<ErrorKind> for GuiClientError {
    fn from(value: ErrorKind) -> Self {
        GuiClientError {
            kind: value,
            msg: None,
            source: None,
        }
    }
}

impl Display for GuiClientError {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(f, "GuiClientError of kind {:?}", self.kind)?;
        if let Some(msg) = &self.msg {
            write!(f, " with message {msg}")?;
        }
        writeln!(f)
    }
}

impl Error for GuiClientError {
    fn source(&self) -> Option<&(dyn Error + 'static)> {
        self.source
            .as_deref()
            .map(|source| source as &(dyn Error + 'static))
    }
}

impl From<flutter_rust_bridge::Rust2DartSendError> for GuiClientError {
    fn from(value: flutter_rust_bridge::Rust2DartSendError) -> Self {
        Self{
            kind: ErrorKind::Closed,
            msg: Some(format!("Failed to send message to dart:\n{}", value.to_string())),
            source: None,
        }
    }
}
