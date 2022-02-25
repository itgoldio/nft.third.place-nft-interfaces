pragma ton-solidity = 0.47.0;

interface IParticleID {
    function getParticleId() external returns(uint particleId);
    function getParticleIdResponsible() external responsible returns(uint particleId);
}