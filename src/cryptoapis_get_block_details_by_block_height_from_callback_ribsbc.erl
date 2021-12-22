-module(cryptoapis_get_block_details_by_block_height_from_callback_ribsbc).

-export([encode/1]).

-export_type([cryptoapis_get_block_details_by_block_height_from_callback_ribsbc/0]).

-type cryptoapis_get_block_details_by_block_height_from_callback_ribsbc() ::
    #{ 'bits' := binary(),
       'chainwork' := binary(),
       'difficulty' := binary(),
       'merkleRoot' := binary(),
       'nonce' := integer(),
       'size' := integer(),
       'version' := integer(),
       'versionHex' := binary()
     }.

encode(#{ 'bits' := Bits,
          'chainwork' := Chainwork,
          'difficulty' := Difficulty,
          'merkleRoot' := MerkleRoot,
          'nonce' := Nonce,
          'size' := Size,
          'version' := Version,
          'versionHex' := VersionHex
        }) ->
    #{ 'bits' => Bits,
       'chainwork' => Chainwork,
       'difficulty' => Difficulty,
       'merkleRoot' => MerkleRoot,
       'nonce' => Nonce,
       'size' => Size,
       'version' => Version,
       'versionHex' => VersionHex
     }.
