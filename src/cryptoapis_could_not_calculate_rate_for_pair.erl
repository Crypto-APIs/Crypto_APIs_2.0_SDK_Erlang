-module(cryptoapis_could_not_calculate_rate_for_pair).

-export([encode/1]).

-export_type([cryptoapis_could_not_calculate_rate_for_pair/0]).

-type cryptoapis_could_not_calculate_rate_for_pair() ::
    #{ 'code' := binary(),
       'message' := binary(),
       'details' => list()
     }.

encode(#{ 'code' := Code,
          'message' := Message,
          'details' := Details
        }) ->
    #{ 'code' => Code,
       'message' => Message,
       'details' => Details
     }.
