pragma ton-solidity = 0.47.0;

interface IBlackBox {
    function getBlackBox() external returns(string blackBoxUrl, string blackBoxSchedule);
    function getBlackBoxResponsible() external responsible returns(string blackBoxUrl, string blackBoxSchedule);
    function setBlackBox(string blackBoxUrl, string blackBoxSchedule) external;
}

abstract contract BlackBox is IBlackBox{

    string _blackBoxUrl;
    string _blackBoxSchedule;

    function getBlackBox() external override returns(string blackBoxUrl, string blackBoxSchedule) {
        return (_blackBoxUrl, _blackBoxSchedule);
    }

    function getBlackBoxResponsible() external override responsible returns(string blackBoxUrl, string blackBoxSchedule) {
        return {value: 0, flag: 64}(_blackBoxUrl, _blackBoxSchedule);
    }
} 