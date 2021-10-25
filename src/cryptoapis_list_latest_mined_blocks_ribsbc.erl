-module(cryptoapis_list_latest_mined_blocks_ribsbc).

-export([encode/1]).

-export_type([cryptoapis_list_latest_mined_blocks_ribsbc/0]).

-type cryptoapis_list_latest_mined_blocks_ribsbc() ::
    #{ 'bits' := binary(),
       'chainwork' := binary(),
       'merkleRoot' := binary(),
       'version' := integer(),
       'versionHex' := binary()
     }.

encode(#{ 'bits' := Bits,
          'chainwork' := Chainwork,
          'merkleRoot' := MerkleRoot,
          'version' := Version,
          'versionHex' := VersionHex
        }) ->
    #{ 'bits' => Bits,
       'chainwork' => Chainwork,
       'merkleRoot' => MerkleRoot,
       'version' => Version,
       'versionHex' => VersionHex
     }.
