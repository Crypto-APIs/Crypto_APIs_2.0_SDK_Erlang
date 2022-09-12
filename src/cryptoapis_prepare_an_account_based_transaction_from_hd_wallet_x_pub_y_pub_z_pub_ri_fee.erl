-module(cryptoapis_prepare_an_account_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_ri_fee).

-export([encode/1]).

-export_type([cryptoapis_prepare_an_account_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_ri_fee/0]).

-type cryptoapis_prepare_an_account_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_ri_fee() ::
    #{ 'gasLimit' := binary(),
       'gasPrice' := binary(),
       'maxFeePerGas' := binary(),
       'maxPriorityFeePerGas' := binary()
     }.

encode(#{ 'gasLimit' := GasLimit,
          'gasPrice' := GasPrice,
          'maxFeePerGas' := MaxFeePerGas,
          'maxPriorityFeePerGas' := MaxPriorityFeePerGas
        }) ->
    #{ 'gasLimit' => GasLimit,
       'gasPrice' => GasPrice,
       'maxFeePerGas' => MaxFeePerGas,
       'maxPriorityFeePerGas' => MaxPriorityFeePerGas
     }.
