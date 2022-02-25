pragma ton-solidity = 0.47.0;

struct RootMeta {
    uint128 height;
    uint128 width;
    uint128 duration;
    string extra;
    string json;
}

interface IPictureMeta {
    function getPictureMeta() external returns(RootMeta pictureMeta);
    function getPictureMetaResponsible() external responsible returns(RootMeta pictureMeta);
}

abstract contract PictureMeta is IPictureMeta{

    RootMeta _pictureMeta;

    function getPictureMeta() external override returns(RootMeta pictureMeta) {
        return (_pictureMeta);
    }

    function getPictureMetaResponsible() external override responsible returns(RootMeta pictureMeta) {
        return {value: 0, flag: 64}(_pictureMeta);
    }

} 