LR12::Application.config.session_store :cookie_store,
                                          :key => '_current_user_id',
                                          :expire_after => 1.minutes