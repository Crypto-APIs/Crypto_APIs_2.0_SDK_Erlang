-module(cryptoapis_get_last_mined_block_ribsd).

-export([encode/1]).

-export_type([cryptoapis_get_last_mined_block_ribsd/0]).

-type cryptoapis_get_last_mined_block_ribsd() ::
    #{ 'difficulty' := binary(),
       'bits' := binary(),
       'chainwork' := binary(),
       'merkleRoot' := binary(),
       'nonce' := integer(),
       'size' := integer(),
       'strippedSize' := integer(),
       'version' := integer(),
       'weight' := integer()
     }.

encode(#{ 'difficulty' := Difficulty,
          'bits' := Bits,
          'chainwork' := Chainwork,
          'merkleRoot' := MerkleRoot,
          'nonce' := Nonce,
          'size' := Size,
          'strippedSize' := StrippedSize,
          'version' := Version,
          'weight' := Weight
        }) ->
    #{ 'difficulty' => Difficulty,
       'bits' => Bits,
       'chainwork' => Chainwork,
       'merkleRoot' => MerkleRoot,
       'nonce' => Nonce,
       'size' => Size,
       'strippedSize' => StrippedSize,
       'version' => Version,
       'weight' => Weight
     }.
