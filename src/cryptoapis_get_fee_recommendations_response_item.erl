-module(cryptoapis_get_fee_recommendations_response_item).

-export([encode/1]).

-export_type([cryptoapis_get_fee_recommendations_response_item/0]).

-type cryptoapis_get_fee_recommendations_response_item() ::
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
