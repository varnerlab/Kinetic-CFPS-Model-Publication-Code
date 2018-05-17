using PyPlot
using PyCall

@pyimport matplotlib.patches as patches

number_of_cols = 19
number_of_rows = 19

# what are my colors?
color_1 = (1/255)*[0,102,204]
color_2 = (1/255)*[230,240,250]

figure(facecolor="white")
epsilon = 0.2;
max_radius = .42
min_radius = .12

# load data array -
raw_productivity = readdlm("GroupKO/Prod")
min_value = minimum(raw_productivity)
max_value = maximum(raw_productivity)
norm_productivity = (raw_productivity-min_value)/(max_value-min_value)

total_order_productivity = sum(norm_productivity,2)
min_value = minimum(total_order_productivity)
max_value = maximum(total_order_productivity)
norm_total_order_productivity = (total_order_productivity-min_value)/(max_value-min_value)

number_of_cols = size(norm_productivity,2)

# add an extra col for colorbar -
colorbar_col = vec(transpose(linspace(0,1,number_of_rows)))

ax = gca()
# main drawing loop -
for col_index = 1:number_of_cols
	for row_index = 1:number_of_rows

		origin_point = [(col_index-1)*(epsilon+1)+1,(number_of_rows-row_index)*(epsilon+1)+1];
		value = norm_productivity[row_index,col_index]

		# what color?
		fraction = (value^2)/(0.15+value^2)
		color_value = fraction*color_1+(1-fraction)*color_2

		# what size?
		radius = value*max_radius*(1-min_radius)+min_radius

		# draw the square -
		ax[:add_patch](

				   patches.Circle(origin_point,   # (x,y)
				       radius,          # radius
				       facecolor=color_value,
				       edgecolor="none",
				       linewidth=0.5,
				   )
			   )


	end
end

for row_index = 1:number_of_rows

	origin_point = [round(1.30*number_of_cols)+1,(number_of_rows-row_index)*(epsilon+1)+1];
	value = norm_total_order_productivity[row_index]

	# what color?
	fraction = (value^2)/(0.15+value^2)
	color_value = fraction*color_1+(1-fraction)*color_2
	
	# what size?
	radius = value*max_radius*(1-min_radius)+min_radius

	# draw the square -
	ax[:add_patch](

		       patches.Circle(origin_point,   # (x,y)
		           radius,          # radius
		           facecolor=color_value,
		           edgecolor="none",
		           linewidth=0.5,
		       )
		   )


end

# load data array -
raw_state = readdlm("GroupKO/State")
min_value = minimum(raw_state)
max_value = maximum(raw_state)
norm_state = (raw_state-min_value)/(max_value-min_value)

total_order_state = sum(norm_state,2)
min_value = minimum(total_order_state)
max_value = maximum(total_order_state)
norm_total_order_state = (total_order_state-min_value)/(max_value-min_value)

number_of_cols = size(norm_state,2)

# add an extra col for colorbar -
colorbar_col = vec(transpose(linspace(0,1,number_of_rows)))

# main drawing loop -
for col_index = 1:number_of_cols
	for row_index = 1:number_of_rows

		origin_point = [(col_index-1)*(epsilon+1)+1,(-.1*number_of_rows-row_index)*(epsilon+1)+1];
		value = norm_state[row_index,col_index]

		# what color?
		fraction = (value^2)/(0.15+value^2)
		color_value = fraction*color_1+(1-fraction)*color_2

		# what size?
		radius = value*max_radius*(1-min_radius)+min_radius

		# draw the square -
		ax[:add_patch](

				   patches.Circle(origin_point,   # (x,y)
				       radius,          # radius
				       facecolor=color_value,
				       edgecolor="none",
				       linewidth=0.5,
				   )
			   )


	end
end

for row_index = 1:number_of_rows

	origin_point = [round(1.30*number_of_cols)+1,(-.1*number_of_rows-row_index)*(epsilon+1)+1];
	value = norm_total_order_state[row_index]

	# what color?
	fraction = (value^2)/(0.15+value^2)
	color_value = fraction*color_1+(1-fraction)*color_2
	
	# what size?
	radius = value*max_radius*(1-min_radius)+min_radius

	# draw the square -
	ax[:add_patch](

		       patches.Circle(origin_point,   # (x,y)
		           radius,          # radius
		           facecolor=color_value,
		           edgecolor="none",
		           linewidth=0.5,
		       )
		   )


end

for col_index = 1:number_of_cols

	origin_point = [(col_index-1)*(epsilon+1)+1,-1.4*number_of_rows];
	value = colorbar_col[col_index]

	# what color?
	fraction = (value^2)/(0.15+value^2)
	color_value = fraction*color_1+(1-fraction)*color_2
	
	# what size?
	radius = value*max_radius*(1-min_radius)+min_radius

	# draw the square -
	ax[:add_patch](

		       patches.Circle(origin_point,   # (x,y)
		           radius,          # radius
		           facecolor=color_value,
		           edgecolor="none",
		           linewidth=0.5,
		       )
		   )


end

axis("square")
axis("off")
savefig("Fig-7-GroupKO.pdf")
