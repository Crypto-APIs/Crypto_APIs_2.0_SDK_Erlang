-module(cryptoapis_get_zilliqa_block_details_by_block_height_ri).

-export([encode/1]).

-export_type([cryptoapis_get_zilliqa_block_details_by_block_height_ri/0]).

-type cryptoapis_get_zilliqa_block_details_by_block_height_ri() ::
    #{ 'blockHash' := binary(),
       'difficulty' := binary(),
       'dsBlock' := integer(),
       'dsDifficulty' := binary(),
       'dsLeader' := binary(),
       'gasLimit' := integer(),
       'gasUsed' := integer(),
       'microBlocks' := list(),
       'nextBlockHash' := binary(),
       'previousBlockHash' := binary(),
       'timestamp' := integer(),
       'transactionsCount' := integer()
     }.

encode(#{ 'blockHash' := BlockHash,
          'difficulty' := Difficulty,
          'dsBlock' := DsBlock,
          'dsDifficulty' := DsDifficulty,
          'dsLeader' := DsLeader,
          'gasLimit' := GasLimit,
          'gasUsed' := GasUsed,
          'microBlocks' := MicroBlocks,
          'nextBlockHash' := NextBlockHash,
          'previousBlockHash' := PreviousBlockHash,
          'timestamp' := Timestamp,
          'transactionsCount' := TransactionsCount
        }) ->
    #{ 'blockHash' => BlockHash,
       'difficulty' => Difficulty,
       'dsBlock' => DsBlock,
       'dsDifficulty' => DsDifficulty,
       'dsLeader' => DsLeader,
       'gasLimit' => GasLimit,
       'gasUsed' => GasUsed,
       'microBlocks' => MicroBlocks,
       'nextBlockHash' => NextBlockHash,
       'previousBlockHash' => PreviousBlockHash,
       'timestamp' => Timestamp,
       'transactionsCount' => TransactionsCount
     }.
