-module(cryptoapis_list_latest_mined_blocks_ribsl).

-export([encode/1]).

-export_type([cryptoapis_list_latest_mined_blocks_ribsl/0]).

-type cryptoapis_list_latest_mined_blocks_ribsl() ::
    #{ 'bits' := binary(),
       'chainwork' := binary(),
       'difficulty' := binary(),
       'merkleRoot' := binary(),
       'nonce' := integer(),
       'size' := integer(),
       'strippedSize' := integer(),
       'version' := integer(),
       'versionHex' := binary(),
       'weight' := integer()
     }.

encode(#{ 'bits' := Bits,
          'chainwork' := Chainwork,
          'difficulty' := Difficulty,
          'merkleRoot' := MerkleRoot,
          'nonce' := Nonce,
          'size' := Size,
          'strippedSize' := StrippedSize,
          'version' := Version,
          'versionHex' := VersionHex,
          'weight' := Weight
        }) ->
    #{ 'bits' => Bits,
       'chainwork' => Chainwork,
       'difficulty' => Difficulty,
       'merkleRoot' => MerkleRoot,
       'nonce' => Nonce,
       'size' => Size,
       'strippedSize' => StrippedSize,
       'version' => Version,
       'versionHex' => VersionHex,
       'weight' => Weight
     }.
