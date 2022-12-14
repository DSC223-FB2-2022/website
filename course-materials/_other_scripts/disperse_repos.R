# This script is to disperse projects/labs/assignments to students

library(ghclass)
library(gitcreds)

#gitcreds::gitcreds_set()
org_sitrep(org = "DSC223-FB2-2022")


setwd("U:/My Drive/Cornell College/Cornell Classes/Data Science/Assignment and Lab Repos/")

roster = read.csv('U:/My Drive/Cornell College/Cornell Classes/Data Science/ghclass-scripts/roster.csv')

# Add students to organzation
#org_invite(org = 'DSC223-FB2-2022',user = roster$github)

# Add individual user
#org_invite(org = 'DSC223-FB2-2022', user = 'Twu23')


# Check current org members
org_members('DSC223-FB2-2022')

# Check pending invites
org_pending('DSC223-FB2-2022')

# This next section is how to prep and disperse repos

# First you need to create a repo out of just the hw/lab you want to disperse
# Next make it a template

repo_name = "lab-11-mlr-course-evals"

repo_set_template(paste0("DSC223-FB2-2022/",repo_name))

repo_is_template(paste0("DSC223-FB2-2022/",repo_name))

# add the yml file for badge
#setwd("directory you have yml file")

#dir.create(paste0(repo_name,"/.github"))
#dir.create(paste0(repo_name,"/.github/workflows"))
#file.copy("yml file", paste0(repo_name,"/.github/workflows"))

# PUSH

# Add the rmarkdown compile badge
# action_add_badge(
#   repo=paste0("DSC223-FB2-2022/",repo_name),
#   workflow = 'Render R Markdown files',
#   where = "^.",
#   line_padding = "\n\n\n",
#   file = "README.md"
# )

# This will create an individual assignment
org_create_assignment(
  org = "DSC223-FB2-2022",
  user = roster$github,
  repo = paste0(paste0(repo_name,"-indi-"), roster$github),
  source_repo = paste0("DSC223-FB2-2022/",repo_name),
  private = TRUE
)



#Team assignment
org_create_assignment(
  org = "DSC223-FB2-2022",
  user = roster$github,
  repo = paste0(repo_name,"_team_",roster$labs3),
  team = paste0(repo_name,"_team_",roster$labs3),
  source_repo = paste0("DSC223-FB2-2022/",repo_name),
  private = TRUE
)

