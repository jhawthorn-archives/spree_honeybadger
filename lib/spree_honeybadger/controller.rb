module SpreeHoneybadger
  module Controller
    extend ActiveSupport::Concern
    included do
      before_filter :spree_honeybadger_context
    end

    protected
    def spree_honeybadger_context
      context = {}
      context[:spree_current_user] = spree_current_user.email if try_spree_current_user
      context[:spree_current_order] = current_order.number if current_order
      Honeybadger.context(context)
    end
  end
end
