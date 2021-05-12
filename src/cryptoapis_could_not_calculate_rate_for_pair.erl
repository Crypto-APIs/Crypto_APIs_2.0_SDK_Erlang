-module(cryptoapis_could_not_calculate_rate_for_pair).

-export([encode/1]).

-export_type([cryptoapis_could_not_calculate_rate_for_pair/0]).

-type cryptoapis_could_not_calculate_rate_for_pair() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_could_not_calculate_rate_for_pair_error:cryptoapis_could_not_calculate_rate_for_pair_error()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'requestId' := RequestId,
          'context' := Context,
          'error' := Error
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'requestId' => RequestId,
       'context' => Context,
       'error' => Error
     }.
