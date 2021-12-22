-module(cryptoapis_get_block_details_by_block_hash_ribsz).

-export([encode/1]).

-export_type([cryptoapis_get_block_details_by_block_hash_ribsz/0]).

-type cryptoapis_get_block_details_by_block_hash_ribsz() ::
    #{ 'difficulty' := binary(),
       'nonce' := binary(),
       'size' := integer(),
       'bits' := binary(),
       'chainwork' := binary(),
       'merkleRoot' := binary(),
       'version' := integer()
     }.

encode(#{ 'difficulty' := Difficulty,
          'nonce' := Nonce,
          'size' := Size,
          'bits' := Bits,
          'chainwork' := Chainwork,
          'merkleRoot' := MerkleRoot,
          'version' := Version
        }) ->
    #{ 'difficulty' => Difficulty,
       'nonce' => Nonce,
       'size' => Size,
       'bits' => Bits,
       'chainwork' => Chainwork,
       'merkleRoot' => MerkleRoot,
       'version' => Version
     }.
