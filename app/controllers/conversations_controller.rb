class ConversationsController < ApplicationController
  #before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  
  
  #rescue ActiveRecord::RecordNotFound
    # special handling here
 

  # GET /items
  # GET /items.json
  #def index

  #  @conversations = current_user.mailbox.conversations

 # end
 def new
  #@recipients = User.all-[current_user]
  end

  def show  
  #@conversation=current_user.mailbox.conversations.find(params[:id])
  @receipts = conversation.receipts_for(current_user)
    # mark conversation as read
    conversation.mark_as_read(current_user)
  
  
  end
   def reply
    current_user.reply_to_conversation(conversation, message_params[:body])
    flash[:notice] = "Your reply message was successfully sent!"
    redirect_to conversation_path(conversation)
  end
  
   def trash
    conversation.move_to_trash(current_user)
    redirect_to mailbox_inbox_path
  end

  def untrash
    conversation.untrash(current_user)
    redirect_to mailbox_inbox_path
  end

  
  
  def create
  #recipient = User.find(params[:user_id])
  #receipt = current_user.send_message(recipient, params[:body], params[:subject])
  #redirect_to conversation_path.(receipt.conversation)
  
  recipients = User.where(id: conversation_params[:recipients])
    conversation = current_user.send_message(recipients, conversation_params[:body], conversation_params[:subject]).conversation
    flash[:notice] = "Your message was successfully sent!"
    redirect_to conversation_path(conversation)
  end
  def destroy
  end
  private
  
  def conversation_params
    params.require(:conversation).permit(:subject, :body,recipients:[])
  end
   def message_params
    params.require(:message).permit(:body, :subject)
  end
end

