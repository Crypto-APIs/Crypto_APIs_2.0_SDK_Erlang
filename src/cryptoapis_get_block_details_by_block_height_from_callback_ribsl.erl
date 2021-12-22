-module(cryptoapis_get_block_details_by_block_height_from_callback_ribsl).

-export([encode/1]).

-export_type([cryptoapis_get_block_details_by_block_height_from_callback_ribsl/0]).

-type cryptoapis_get_block_details_by_block_height_from_callback_ribsl() ::
    #{ 'bits' := binary(),
       'chainwork' := binary(),
       'difficulty' := binary(),
       'merkleRoot' := binary(),
       'nonce' := integer(),
       'size' := integer(),
       'strippedsize' := integer(),
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
          'strippedsize' := Strippedsize,
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
       'strippedsize' => Strippedsize,
       'version' => Version,
       'versionHex' => VersionHex,
       'weight' => Weight
     }.
