-module(cryptoapis_get_block_details_by_block_hash_from_callback_ribsx).

-export([encode/1]).

-export_type([cryptoapis_get_block_details_by_block_hash_from_callback_ribsx/0]).

-type cryptoapis_get_block_details_by_block_hash_from_callback_ribsx() ::
    #{ 'totalCoins' := cryptoapis_get_latest_mined_xrp_ripple_block_ri_total_coins:cryptoapis_get_latest_mined_xrp_ripple_block_ri_total_coins(),
       'totalFees' := cryptoapis_get_latest_mined_xrp_ripple_block_ri_total_fees:cryptoapis_get_latest_mined_xrp_ripple_block_ri_total_fees()
     }.

encode(#{ 'totalCoins' := TotalCoins,
          'totalFees' := TotalFees
        }) ->
    #{ 'totalCoins' => TotalCoins,
       'totalFees' => TotalFees
     }.
