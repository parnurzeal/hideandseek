# Set my main git user
echo "Set git email to ${GIT_EMAIL}"
git config --global user.name "${GIT_USERNAME}"
git config --global user.email "${GIT_EMAIL}"

# Set ghq path
git config --global ghq.root "${HOME}/PlayGround/ghq"

