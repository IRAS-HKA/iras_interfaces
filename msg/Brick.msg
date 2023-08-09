# generic object description (id, pose, mesh)
sr_manipulation_interfaces/ObjectDescriptor object
# brick meta data
float64 width
float64 depth
float64 height
# brick to gripper relation
# distance on z axis of the brick (may be negative if penetration is required)
float64 gripper_pre_grip_distance
# distance on z axis of the brick (may be negative if penetration is required)
float64 gripper_grip_distance


