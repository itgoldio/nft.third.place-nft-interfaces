pragma ton-solidity = 0.47.0;

interface ICustomInterfaces {
    function getCustomInterfacesUrl() external returns (string url);
    function getCustomInterfacesUrlResponsible() external responsible returns (string url);
}

abstract contract CustomInterfaces is ICustomInterfaces {
    
    string _customInterfacesUrl;

    function getCustomInterfacesUrl() external override returns (string url) {
        return _customInterfacesUrl; 
    }

    function getCustomInterfacesUrlResponsible() external override responsible returns (string url) {
        return {value: 0, flag: 64}(_customInterfacesUrl);
    }

}