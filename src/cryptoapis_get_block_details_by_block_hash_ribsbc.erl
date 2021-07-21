-module(cryptoapis_get_block_details_by_block_hash_ribsbc).

-export([encode/1]).

-export_type([cryptoapis_get_block_details_by_block_hash_ribsbc/0]).

-type cryptoapis_get_block_details_by_block_hash_ribsbc() ::
    #{ 'difficulty' := binary(),
       'nonce' := integer(),
       'size' := integer(),
       'bits' := binary(),
       'chainwork' := binary(),
       'merkleroot' := binary(),
       'version' := integer(),
       'versionHex' := binary()
     }.

encode(#{ 'difficulty' := Difficulty,
          'nonce' := Nonce,
          'size' := Size,
          'bits' := Bits,
          'chainwork' := Chainwork,
          'merkleroot' := Merkleroot,
          'version' := Version,
          'versionHex' := VersionHex
        }) ->
    #{ 'difficulty' => Difficulty,
       'nonce' => Nonce,
       'size' => Size,
       'bits' => Bits,
       'chainwork' => Chainwork,
       'merkleroot' => Merkleroot,
       'version' => Version,
       'versionHex' => VersionHex
     }.
