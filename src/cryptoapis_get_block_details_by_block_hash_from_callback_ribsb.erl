-module(cryptoapis_get_block_details_by_block_hash_from_callback_ribsb).

-export([encode/1]).

-export_type([cryptoapis_get_block_details_by_block_hash_from_callback_ribsb/0]).

-type cryptoapis_get_block_details_by_block_hash_from_callback_ribsb() ::
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
