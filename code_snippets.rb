# this should be sorting lowest to highest
# sorted earliest to latest
@all_tables_activity.sort { |a,b| a.time_sat <=> b.time_sat  }
