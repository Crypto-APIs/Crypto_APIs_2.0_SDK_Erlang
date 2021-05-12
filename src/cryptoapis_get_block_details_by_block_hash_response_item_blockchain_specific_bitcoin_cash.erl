-module(cryptoapis_get_block_details_by_block_hash_response_item_blockchain_specific_bitcoin_cash).

-export([encode/1]).

-export_type([cryptoapis_get_block_details_by_block_hash_response_item_blockchain_specific_bitcoin_cash/0]).

-type cryptoapis_get_block_details_by_block_hash_response_item_blockchain_specific_bitcoin_cash() ::
    #{ 'difficulty' := binary(),
       'nonce' := binary(),
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
