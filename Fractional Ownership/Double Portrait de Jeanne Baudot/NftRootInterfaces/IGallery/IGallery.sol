pragma ton-solidity = 0.47.0;

interface IGallery {
    function getGallery() external returns(address galleryAddress, uint8 galleryRoyalty);
    function getGalleryResponsible() external responsible returns(address galleryAddress, uint8 galleryRoyalty);
}

abstract contract Gallery is IGallery {

    address _galleryAddress;
    uint8 _galleryRoyalty;

    function getGallery() external override returns(address galleryAddress, uint8 galleryRoyalty) {
        return (_galleryAddress, _galleryRoyalty);
    }

    function getGalleryResponsible() external override responsible returns(address galleryAddress, uint8 galleryRoyalty) {
        return {value: 0, flag: 64}(_galleryAddress, _galleryRoyalty);
    }
} 