 mgr = OdrManagerLite()
 loadfile(mgr, "sample1.1.xodr")
 printdata(mgr)
 pos= create_position(mgr)
 activate_position(mgr, pos)
 get_trackpos(mgr)
 get_lanepos(mgr)
 get_inertialpos(mgr)
 get_footpoint(mgr)
 # set_pos(mgr, value)
 # set_trackpos_s_t(mgr, id, s, t)
 # set_trackpos_track_coord(mgr, value)
 # set_pos_with_lanecoord(mgr, value)
 # set_lanepos(mgr, trackId, laneId, s, offset)
 # set_lanepos_with_lanecoord(mgr, value)
 # set_pos_with_coord(mgr, value)
 # set_inertialpos(mgr, x, y, z)
 # convert_track_to_inertial(mgr)
 # convert_inertial_to_track(mgr)
 # convert_lane_to_inertial(mgr)
 # convert_inertial_to_lane(mgr)
 # print_odrmanagerlite(mgr)
 # get_curvature(mgr)
 # get_track_len(mgr, trackId)
 # get_lane_width(mgr)
 # copy_foot_point_to_inertial(mgr)
