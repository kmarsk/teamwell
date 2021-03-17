module ApplicationHelper
    def user_image_key(current_user)
        current_user && current_user.photo.attached? ? current_user.photo.key : "avatar_dlwrvu"
    end

    def activity_image_key(activity)
        activity && activity.photo.attached? ? activity.photo.key : "bruno-nascimento-PHIgYUGQPvU-unsplash_dtbxzi"
    end
end