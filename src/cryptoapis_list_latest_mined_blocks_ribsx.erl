-module(cryptoapis_list_latest_mined_blocks_ribsx).

-export([encode/1]).

-export_type([cryptoapis_list_latest_mined_blocks_ribsx/0]).

-type cryptoapis_list_latest_mined_blocks_ribsx() ::
    #{ 'totalCoins' => cryptoapis_list_latest_mined_blocks_ribsx_total_coins:cryptoapis_list_latest_mined_blocks_ribsx_total_coins(),
       'totalFees' := cryptoapis_list_latest_mined_blocks_ribsx_total_fees:cryptoapis_list_latest_mined_blocks_ribsx_total_fees()
     }.

encode(#{ 'totalCoins' := TotalCoins,
          'totalFees' := TotalFees
        }) ->
    #{ 'totalCoins' => TotalCoins,
       'totalFees' => TotalFees
     }.
