# tfc-agent-hooks

docker build --tag "tfc-agent-hooks" tfc-agent-hooks

export TFC_ADDRESS=your-tfe-address
export TFC_AGENT_TOKEN=your-token
export TFC_AGENT_NAME=your-agent-name

docker run -e TFC_ADDRESS -e TFC_AGENT_TOKEN -e TFC_AGENT_NAME tfc-agent-hooks &
