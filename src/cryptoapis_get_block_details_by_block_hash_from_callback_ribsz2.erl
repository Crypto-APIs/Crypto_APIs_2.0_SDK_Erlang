-module(cryptoapis_get_block_details_by_block_hash_from_callback_ribsz2).

-export([encode/1]).

-export_type([cryptoapis_get_block_details_by_block_hash_from_callback_ribsz2/0]).

-type cryptoapis_get_block_details_by_block_hash_from_callback_ribsz2() ::
    #{ 'bits' := binary(),
       'chainwork' := binary(),
       'merkleRoot' := binary(),
       'nonce' := binary(),
       'size' := integer(),
       'version' := integer()
     }.

encode(#{ 'bits' := Bits,
          'chainwork' := Chainwork,
          'merkleRoot' := MerkleRoot,
          'nonce' := Nonce,
          'size' := Size,
          'version' := Version
        }) ->
    #{ 'bits' => Bits,
       'chainwork' => Chainwork,
       'merkleRoot' => MerkleRoot,
       'nonce' => Nonce,
       'size' => Size,
       'version' => Version
     }.
