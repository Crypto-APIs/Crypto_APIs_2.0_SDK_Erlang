-module(cryptoapis_get_latest_mined_block_response_item_blockchain_specific_dash).

-export([encode/1]).

-export_type([cryptoapis_get_latest_mined_block_response_item_blockchain_specific_dash/0]).

-type cryptoapis_get_latest_mined_block_response_item_blockchain_specific_dash() ::
    #{ 'difficulty' := binary(),
       'nonce' := binary(),
       'size' := integer(),
       'bits' := binary(),
       'chainwork' := binary(),
       'merkleRoot' := binary(),
       'version' := integer(),
       'versionHex' := binary()
     }.

encode(#{ 'difficulty' := Difficulty,
          'nonce' := Nonce,
          'size' := Size,
          'bits' := Bits,
          'chainwork' := Chainwork,
          'merkleRoot' := MerkleRoot,
          'version' := Version,
          'versionHex' := VersionHex
        }) ->
    #{ 'difficulty' => Difficulty,
       'nonce' => Nonce,
       'size' => Size,
       'bits' => Bits,
       'chainwork' => Chainwork,
       'merkleRoot' => MerkleRoot,
       'version' => Version,
       'versionHex' => VersionHex
     }.
