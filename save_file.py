from puppy import LLMAgent
if __name__ == '__main__':
    agent = LLMAgent.load_checkpoint("/finmem/data/08_test_checkpoint/agent_1")
    df = agent.portfolio.get_action_df()
    df.write_csv("amzn_gpt3.5.csv")