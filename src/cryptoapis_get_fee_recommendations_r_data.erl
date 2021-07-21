-module(cryptoapis_get_fee_recommendations_r_data).

-export([encode/1]).

-export_type([cryptoapis_get_fee_recommendations_r_data/0]).

-type cryptoapis_get_fee_recommendations_r_data() ::
    #{ 'item' := cryptoapis_get_fee_recommendations_ri:cryptoapis_get_fee_recommendations_ri()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
