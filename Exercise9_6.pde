int[]nums = {5, 4, 2, 7, 6, 8, 5, 2, 8, 14};

for(int i=0; i<10; i++){
 nums[i] = nums[i]*nums[i]; 
}

for(int i=0; i<10; i++){
  nums[i] += int(random(0,10));
}

for(int i=0; i<9; i++){
  nums[i]+=nums[i+1];
}
  
int sum =0;
for(int i=0; i<nums.length; i++){
  sum+=nums[i];
}

println(sum);

