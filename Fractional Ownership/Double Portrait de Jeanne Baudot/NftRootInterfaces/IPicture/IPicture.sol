pragma ton-solidity = 0.47.0;

interface IPicture {
    function getPictureUrl() external returns(string pictureUrl); 
    function getPictureUrlResponsible() external responsible returns(string pictureUrl);
}

abstract contract Picture is IPicture{

    string _pictureUrl;

    function getPictureUrl() external override returns(string pictureUrl) {
        return _pictureUrl;
    }

    function getPictureUrlResponsible() external override responsible returns(string pictureUrl) {
        return {value: 0, flag: 64}(_pictureUrl);
    }

} 