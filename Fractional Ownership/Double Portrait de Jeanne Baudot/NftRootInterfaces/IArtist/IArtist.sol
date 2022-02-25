pragma ton-solidity = 0.47.0;

interface IArtist {
    function getArtist() external returns(string artist);
    function getArtistResponsible() external responsible returns(string artist);
}

abstract contract Artist is IArtist{

    string _artist;

    function getArtist() external override returns(string artist) {
        return (_artist);
    }

    function getArtistResponsible() external override responsible returns(string artist) {
        return {value: 0, flag: 64}(_artist);
    }

}