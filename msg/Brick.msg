# generic object description (id, pose, mesh)
sr_manipulation_interfaces/ObjectDescriptor object
# brick meta data
# dim along x
float64 length
# dim along y
float64 width
# dim along z
float64 height
# brick to gripper relation
# gauge for the gripper tcp to be placed correctly
float64 gauge
# distance on z axis of the brick (may be negative if penetration is required)
float64 gripper_pre_grip_distance
# distance on z axis of the brick (may be negative if penetration is required)
float64 gripper_grip_distance
# true if the grasp should be a side grasp
bool side_grasp


