-module(cryptoapis_list_latest_mined_blocks_ribsd2).

-export([encode/1]).

-export_type([cryptoapis_list_latest_mined_blocks_ribsd2/0]).

-type cryptoapis_list_latest_mined_blocks_ribsd2() ::
    #{ 'bits' := binary(),
       'chainwork' := binary(),
       'merkleRoot' := binary(),
       'strippedSize' := integer(),
       'version' := integer(),
       'weight' := integer()
     }.

encode(#{ 'bits' := Bits,
          'chainwork' := Chainwork,
          'merkleRoot' := MerkleRoot,
          'strippedSize' := StrippedSize,
          'version' := Version,
          'weight' := Weight
        }) ->
    #{ 'bits' => Bits,
       'chainwork' => Chainwork,
       'merkleRoot' => MerkleRoot,
       'strippedSize' => StrippedSize,
       'version' => Version,
       'weight' => Weight
     }.
