pragma ton-solidity = 0.47.0;

struct DataMeta {
    uint128 height;
    uint128 width;
    uint128 duration;
    string extra;
    string json;
}

interface IParticleMeta {
    function getParticleMeta() external returns(DataMeta particleMeta);
    function getParticleMetaResponsible() external responsible returns(DataMeta particleMeta);
}

abstract contract ParticleMeta is IParticleMeta{

    DataMeta _particleMeta;

    function getParticleMeta() external override returns(DataMeta particleMeta) {
        return (_particleMeta);
    }

    function getParticleMetaResponsible() external override responsible returns(DataMeta particleMeta) {
        return {value: 0, flag: 64}(_particleMeta);
    }

} 