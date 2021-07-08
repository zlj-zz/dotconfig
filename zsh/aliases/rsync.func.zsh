function sync_mycobot_ros() {
    # function_body
    rsync -avz -e ssh ~/Projects/elephantrobotics/mycobot_ros $1
}
