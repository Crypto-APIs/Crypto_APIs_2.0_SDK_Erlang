-module(cryptoapis_list_latest_mined_blocks_ribsd2).

-export([encode/1]).

-export_type([cryptoapis_list_latest_mined_blocks_ribsd2/0]).

-type cryptoapis_list_latest_mined_blocks_ribsd2() ::
    #{ 'bits' := binary(),
       'chainwork' := binary(),
       'difficulty' := binary(),
       'merkleRoot' := binary(),
       'nonce' := integer(),
       'size' := integer(),
       'strippedSize' := integer(),
       'version' := integer(),
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
       'weight' => Weight
     }.
