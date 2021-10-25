-module(cryptoapis_get_last_mined_block_ribsz).

-export([encode/1]).

-export_type([cryptoapis_get_last_mined_block_ribsz/0]).

-type cryptoapis_get_last_mined_block_ribsz() ::
    #{ 'difficulty' := binary(),
       'nonce' := binary(),
       'size' := integer(),
       'bits' := binary(),
       'chainwork' := binary(),
       'merkleroot' := binary(),
       'version' := integer()
     }.

encode(#{ 'difficulty' := Difficulty,
          'nonce' := Nonce,
          'size' := Size,
          'bits' := Bits,
          'chainwork' := Chainwork,
          'merkleroot' := Merkleroot,
          'version' := Version
        }) ->
    #{ 'difficulty' => Difficulty,
       'nonce' => Nonce,
       'size' => Size,
       'bits' => Bits,
       'chainwork' => Chainwork,
       'merkleroot' => Merkleroot,
       'version' => Version
     }.
