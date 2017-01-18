# Author is github id: ddk376
# Contributors : Python group in the January 17, 2017 meetup 
# Version: Python 3.5.2

def initalizeTowerStacks(num_of_disks, start_col):
    tower_stacks = [[],[],[]]
    for i in reversed(range(1, num_of_disks+1)):
        tower_stacks[start_col-1].append(i)

    return tower_stacks

def towersOfHanoi(num_of_disks, start_col, end_col, temp_col):
    """ Solves towers of Hanoi: larger the disk number signifies a larger disk, ie disk 4 < disk 5
        Columns are labeled as follows
          ||  ||  ||
          ||  ||  ||
        ==============
          1    2   3       
    """

    tower_stacks = initalizeTowerStacks(num_of_disks, start_col)
    solveTowersOfHanoi(num_of_disks, start_col, end_col, temp_col, tower_stacks)

def solveTowersOfHanoi(num_of_disks, start_col, end_col, temp_col, tower_stacks):
    if num_of_disks == 1: moveDisk(1, start_col, end_col , tower_stacks)
    else:
        solveTowersOfHanoi(num_of_disks - 1, start_col, temp_col, end_col, tower_stacks)    # move the N-1 disks out of the way to the temp column
        moveDisk(num_of_disks, start_col, end_col, tower_stacks)                            # after all the smaller disks are out of the way, move the biggest disk to the end_col
        solveTowersOfHanoi(num_of_disks - 1, temp_col, end_col, start_col, tower_stacks)    # now move the N-1 disks to the end_col from the temp_col 


def moveDisk(disk_num, from_col, to_col, tower_stacks):
    print ("Move disk " + str(disk_num) + " from column " + str(from_col) + " to column " + str(to_col))
    disk = tower_stacks[from_col-1].pop()
    tower_stacks[to_col-1].append(disk)
    print(tower_stacks)



if __name__ == "__main__":
    print("\nTesting towersOfHanoi............................")
    print("3 disks")
    towersOfHanoi(3, 1, 3, 2)
    print("4 disks")
    towersOfHanoi(4, 1, 3, 2)
    print("5 disks")
    towersOfHanoi(5, 1, 3, 2)