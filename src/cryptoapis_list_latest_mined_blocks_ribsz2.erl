-module(cryptoapis_list_latest_mined_blocks_ribsz2).

-export([encode/1]).

-export_type([cryptoapis_list_latest_mined_blocks_ribsz2/0]).

-type cryptoapis_list_latest_mined_blocks_ribsz2() ::
    #{ 'bits' := binary(),
       'chainwork' := binary(),
       'merkleroot' := binary(),
       'nonce' := binary(),
       'size' := integer(),
       'version' := integer()
     }.

encode(#{ 'bits' := Bits,
          'chainwork' := Chainwork,
          'merkleroot' := Merkleroot,
          'nonce' := Nonce,
          'size' := Size,
          'version' := Version
        }) ->
    #{ 'bits' => Bits,
       'chainwork' => Chainwork,
       'merkleroot' => Merkleroot,
       'nonce' => Nonce,
       'size' => Size,
       'version' => Version
     }.
