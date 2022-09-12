-module(cryptoapis_get_block_details_by_block_height_ribsz).

-export([encode/1]).

-export_type([cryptoapis_get_block_details_by_block_height_ribsz/0]).

-type cryptoapis_get_block_details_by_block_height_ribsz() ::
    #{ 'difficulty' := binary(),
       'bits' := binary(),
       'chainwork' := binary(),
       'merkleRoot' := binary(),
       'nonce' := binary(),
       'size' := integer(),
       'version' := integer()
     }.

encode(#{ 'difficulty' := Difficulty,
          'bits' := Bits,
          'chainwork' := Chainwork,
          'merkleRoot' := MerkleRoot,
          'nonce' := Nonce,
          'size' := Size,
          'version' := Version
        }) ->
    #{ 'difficulty' => Difficulty,
       'bits' => Bits,
       'chainwork' => Chainwork,
       'merkleRoot' => MerkleRoot,
       'nonce' => Nonce,
       'size' => Size,
       'version' => Version
     }.
