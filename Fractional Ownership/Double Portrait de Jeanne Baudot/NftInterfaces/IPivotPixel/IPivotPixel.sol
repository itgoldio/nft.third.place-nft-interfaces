pragma ton-solidity = 0.47.0;

interface IPivotPixel {
    function getPivotPixel() external returns(uint pivotPixelWidth, uint pivotPixelHeight);
    function getPivotPixelResponsible() external responsible returns(uint pivotPixelWidth, uint pivotPixelHeight);
}

abstract contract PivotPixel is IPivotPixel {

    uint32 _pivotPixelWidth;
    uint32 _pivotPixelHeight;

    function getPivotPixel() external override returns(uint pivotPixelWidth, uint pivotPixelHeight) {
        return (_pivotPixelWidth, _pivotPixelHeight);
    }

    function getPivotPixelResponsible() external override responsible returns(uint pivotPixelWidth, uint pivotPixelHeight) {
        return {value: 0, flag: 64}(_pivotPixelWidth, _pivotPixelHeight);
    }
} 