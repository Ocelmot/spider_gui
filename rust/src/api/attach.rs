use flutter_rust_bridge::frb;

#[cfg(not(frb_expand))]
pub use spider_client::link::bluetooth::attach::{
    AttachKey, AttachNonce, AttachSalt, AttachSecurityType, NetworkSecurityType,
};
use spider_client::link::bluetooth::{
    self,
    attach::{
        AttachDetails as WrappedAttachDetails, NetworkDetails as WrappedNetworkDetails, Status,
    },
};

pub struct BleUuids {
    pub base: String,
    pub status: String,
    pub networks: String,
    pub nonce: String,
    pub attach: String,
}

#[flutter_rust_bridge::frb(sync)]
pub fn ble_uuids() -> BleUuids {
    BleUuids {
        base: bluetooth::BASE.to_string(),
        status: bluetooth::STATUS.to_string(),
        networks: bluetooth::NETWORKS.to_string(),
        nonce: bluetooth::NONCE.to_string(),
        attach: bluetooth::ATTACH.to_string(),
    }
}

pub enum StatusKind {
    Unknown,
    Ready,
    Attaching,
    Attached,
    Retry,
    NotFound,
    InvalidCredentials,
    NoAddress,
    SystemError,
}

pub struct AttachStatus(Status);

impl AttachStatus {
    #[frb(sync)]
    pub fn from_bytes(bytes: &[u8]) -> Option<AttachStatus> {
        Status::from_bytes(bytes).ok().map(Self)
    }

    #[frb(sync)]
    pub fn text(&self) -> String {
        self.0.to_string()
    }

    #[frb(sync)]
    pub fn kind(&self) -> StatusKind {
        match self.0 {
                Status::Unknown(_) => StatusKind::Unknown,
                Status::Ready => StatusKind::Ready,
                Status::Attaching => StatusKind::Attaching,
                Status::Attached => StatusKind::Attached,
                Status::Retry => StatusKind::Retry,
                Status::NotFound => StatusKind::NotFound,
                Status::InvalidCredentials => StatusKind::InvalidCredentials,
                Status::NoAddress => StatusKind::NoAddress,
                Status::SystemError => StatusKind::SystemError,
        }
    }
}

#[frb(mirror(NetworkSecurityType))]
pub enum _NetworkSecurityType {
    Unknown,
    Open,
    Wep,
    WpaPsk,
    Wpa3Sae,
    Enterprise,
}

#[frb(sync)]
pub fn is_supported(sec_type: &NetworkSecurityType) -> bool {
    match sec_type {
        NetworkSecurityType::Unknown => false,
        NetworkSecurityType::Open => true,
        NetworkSecurityType::Wep => false,
        NetworkSecurityType::WpaPsk => true,
        NetworkSecurityType::Wpa3Sae => true,
        NetworkSecurityType::Enterprise => false,
    }
}
#[frb(sync)]
pub fn security_type_name(sec_type: &NetworkSecurityType) -> String {
    match sec_type {
        NetworkSecurityType::Unknown => String::from("Unknown"),
        NetworkSecurityType::Open => String::from("Open"),
        NetworkSecurityType::Wep => String::from("Wep"),
        NetworkSecurityType::WpaPsk => String::from("Wpa2 Personal"),
        NetworkSecurityType::Wpa3Sae => String::from("Wpa3 Personal"),
        NetworkSecurityType::Enterprise => String::from("Enterprise"),
    }
}

pub struct NetworkDetails(WrappedNetworkDetails);

impl NetworkDetails {
    #[frb(sync)]
    pub fn from_bytes(bytes: &[u8]) -> Option<Self> {
        WrappedNetworkDetails::from_bytes(bytes).ok().map(Self)
    }

    #[frb(sync)]
    pub fn ssid(&self) -> Vec<u8> {
        self.0.ssid.clone()
    }

    #[frb(sync)]
    pub fn strength(&self) -> i8 {
        self.0.strength
    }

    #[frb(sync)]
    pub fn sec_type(&self) -> NetworkSecurityType {
        self.0.sec_type.clone()
    }
}

#[flutter_rust_bridge::frb(sync)]
pub fn parse_nonce(data: Vec<u8>) -> Option<(AttachSalt, AttachNonce)> {
    let (salt_data, nonce_data) = data.split_at_checked(6)?;

    let nonce = nonce_data.try_into().ok()?;
    let salt = salt_data.try_into().ok()?;
    Some((salt, nonce))
}

#[flutter_rust_bridge::frb(sync)]
pub fn generate_key(hardware_code: String, salt: AttachSalt) -> Option<AttachKey> {
    spider_client::link::bluetooth::attach::generate_key(&hardware_code, &salt).ok()
}

#[flutter_rust_bridge::frb(sync)]
pub fn validate_hardware_code(hardware_code: String) -> bool {
    spider_client::link::bluetooth::attach::generate_key(&hardware_code, &[0u8; 6]).is_ok()
}

#[flutter_rust_bridge::frb(sync)]
pub fn open_security_type() -> AttachSecurityType {
    AttachSecurityType::Open
}
#[flutter_rust_bridge::frb(sync)]
pub fn wpa2_security_type(pass: String) -> AttachSecurityType {
    AttachSecurityType::Wpa2Personal(pass)
}
#[flutter_rust_bridge::frb(sync)]
pub fn wpa3_security_type(pass: String) -> AttachSecurityType {
    AttachSecurityType::Wpa3Personal(pass)
}

pub struct AttachDetails(WrappedAttachDetails);

impl AttachDetails {
    #[frb(sync)]
    pub fn create(ssid: Vec<u8>, sec_type: AttachSecurityType, hidden: bool) -> Option<Self> {
        WrappedAttachDetails::new(ssid, sec_type, hidden)
            .ok()
            .map(AttachDetails)
    }

    #[frb(sync)]
    pub fn pack(&self, key: &AttachKey, nonce: &AttachNonce) -> Vec<u8> {
        self.0.pack(key, nonce)
    }
}
