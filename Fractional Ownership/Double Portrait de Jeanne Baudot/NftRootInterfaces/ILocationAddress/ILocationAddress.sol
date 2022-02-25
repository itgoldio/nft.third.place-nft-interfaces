pragma ton-solidity = 0.47.0;

interface ILocationAddress {
    function getLocationAddress() external returns(string locationAddress);
    function getLocationAddressResponsible() external responsible returns(string locationAddress);
    function setLocationAddress(string locationAddress) external;
}

abstract contract LocationAddress is ILocationAddress{

    string _locationAddress;

    function getLocationAddress() external override returns(string locationAddress) {
        return (_locationAddress);
    }

    function getLocationAddressResponsible() external override responsible returns(string locationAddress) {
        return {value: 0, flag: 64}(_locationAddress);
    }

} 