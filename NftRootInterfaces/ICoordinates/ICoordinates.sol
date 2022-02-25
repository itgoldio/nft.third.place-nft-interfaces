pragma ton-solidity = 0.47.0;

interface ICoordinates {
    function getCoordinates() external returns(string latitude, string longtitude); 
    function getCoordinatesResponsible() external responsible returns(string latitude, string longtitude);
    function setCoordinates(string latitude, string longtitude) external;
}

abstract contract Coordinates is ICoordinates{

    string _latitude;
    string _longtitude;
    function getCoordinates() external override returns(string latitude, string longtitude) {
        return (_latitude, _longtitude);
    }

    function getCoordinatesResponsible() external override responsible returns(string latitude, string longtitude) {
        return {value: 0, flag: 64}(_latitude, _longtitude);
    }

} 