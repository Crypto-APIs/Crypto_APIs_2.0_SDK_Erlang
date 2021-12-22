-module(cryptoapis_list_latest_mined_blocks_ribsz2).

-export([encode/1]).

-export_type([cryptoapis_list_latest_mined_blocks_ribsz2/0]).

-type cryptoapis_list_latest_mined_blocks_ribsz2() ::
    #{ 'bits' := binary(),
       'chainwork' := binary(),
       'difficulty' := binary(),
       'merkleRoot' := binary(),
       'nonce' := binary(),
       'size' := integer(),
       'version' := integer()
     }.

encode(#{ 'bits' := Bits,
          'chainwork' := Chainwork,
          'difficulty' := Difficulty,
          'merkleRoot' := MerkleRoot,
          'nonce' := Nonce,
          'size' := Size,
          'version' := Version
        }) ->
    #{ 'bits' => Bits,
       'chainwork' => Chainwork,
       'difficulty' => Difficulty,
       'merkleRoot' => MerkleRoot,
       'nonce' => Nonce,
       'size' => Size,
       'version' => Version
     }.
