-module(cryptoapis_feature_mainnets_not_allowed_for_plan).

-export([encode/1]).

-export_type([cryptoapis_feature_mainnets_not_allowed_for_plan/0]).

-type cryptoapis_feature_mainnets_not_allowed_for_plan() ::
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
