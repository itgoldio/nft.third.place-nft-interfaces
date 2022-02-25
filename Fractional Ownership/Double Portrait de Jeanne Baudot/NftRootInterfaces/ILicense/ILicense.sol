pragma ton-solidity = 0.47.0;

interface ILicense {
    function getLicense() external returns(string license);
    function getLicenseResponsible() external responsible returns(string license);
}

abstract contract License is ILicense{

    string _license;

    function getLicense() external override returns(string license) {
        return (_license);
    }

    function getLicenseResponsible() external override responsible returns(string license) {
        return {value: 0, flag: 64}(_license);
    }

} 