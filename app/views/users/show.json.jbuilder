json.(@user, :id, :first_name, :middle_name, :last_name, :nickname, :role,
            :position, :team_id, :club_id, :association_id, :team_changed_at, :verified, :active_sport,
            :facebook, :twitter, :google_plus, :instagram, :linkedin, :youtube, :tumblr, :snapchat, :blog_url,
            :reputation_score)
json.(@user, :dob, :gender, :nationality, :agree_terms) if @current_user == @user
json.avatar do
  json.url @user.avatar.url
end
json.player_profile @user.player_profile
json.active_sport_profile @user.sport_profiles.where(sport: @user.active_sport).first
json.positions @user.positions
json.previous_teams @user.previous_teams.pluck(:team_id)
json.club do
  json.(@user.club, :id, :name, :description, :association_id, :created_at, :updated_at)
  json.logo do
    json.url @user.club.logo.url
  end
end if @user.club
json.team do
  json.(@user.team, :id, :name)
  json.league @user.team.league
end if @user.team
json.player_equipments player_equipment_sort(@user.player_equipments).each do |equipment|
  json.(equipment, :id, :model, :equipment_type)
  json.brand equipment.brand
  json.equipment_photos equipment.equipment ? equipment.equipment.equipment_photos : []
end
