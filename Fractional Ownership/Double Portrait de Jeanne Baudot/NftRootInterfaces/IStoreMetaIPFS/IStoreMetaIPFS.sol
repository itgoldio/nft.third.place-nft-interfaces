pragma ton-solidity = 0.47.0;

interface IStoreMetaIPFS{
    function getDescriptionUrl() external returns(string descriptionUrl);
    function getDescriptionUrlResponsible() external responsible returns(string descriptionUrl);
}

abstract contract StoreMetaIPFS is IStoreMetaIPFS{

    string _metaUrl;

    function getDescriptionUrl() external override returns(string metaUrl) {
        return (_metaUrl);
    }

    function getDescriptionUrlResponsible() external override responsible returns(string metaUrl) {
        return {value: 0, flag: 64}(_metaUrl);
    }

} 