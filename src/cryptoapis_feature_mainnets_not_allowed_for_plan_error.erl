-module(cryptoapis_feature_mainnets_not_allowed_for_plan_error).

-export([encode/1]).

-export_type([cryptoapis_feature_mainnets_not_allowed_for_plan_error/0]).

-type cryptoapis_feature_mainnets_not_allowed_for_plan_error() ::
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
