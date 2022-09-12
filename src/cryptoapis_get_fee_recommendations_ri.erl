-module(cryptoapis_get_fee_recommendations_ri).

-export([encode/1]).

-export_type([cryptoapis_get_fee_recommendations_ri/0]).

-type cryptoapis_get_fee_recommendations_ri() ::
    #{ 'unit' := binary(),
       'fast' := binary(),
       'slow' := binary(),
       'standard' := binary()
     }.

encode(#{ 'unit' := Unit,
          'fast' := Fast,
          'slow' := Slow,
          'standard' := Standard
        }) ->
    #{ 'unit' => Unit,
       'fast' => Fast,
       'slow' => Slow,
       'standard' => Standard
     }.
