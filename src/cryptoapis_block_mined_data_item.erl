-module(cryptoapis_block_mined_data_item).

-export([encode/1]).

-export_type([cryptoapis_block_mined_data_item/0]).

-type cryptoapis_block_mined_data_item() ::
    #{ 'blockchain' := binary(),
       'network' := binary(),
       'height' := integer(),
       'hash' := binary(),
       'timestamp' := integer()
     }.

encode(#{ 'blockchain' := Blockchain,
          'network' := Network,
          'height' := Height,
          'hash' := Hash,
          'timestamp' := Timestamp
        }) ->
    #{ 'blockchain' => Blockchain,
       'network' => Network,
       'height' => Height,
       'hash' => Hash,
       'timestamp' => Timestamp
     }.
